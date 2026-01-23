package net.bigpoint.cityrama.view.departmentBook.ui.components
{
   import com.greensock.TweenMax;
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.GlowFilter;
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
   import mx.controls.ToolTip;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.departmentBook.vo.DepartmentThresholdBarVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   use namespace mx_internal;
   
   public class SecurityBarPartComponent extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _756762963bubbleGroup:Group;
      
      private var _74026253maskGroup:Group;
      
      private var _169633629maskPreviewGroup:Group;
      
      private var _1318318899staticBG:HGroup;
      
      private var _146540369staticBarMask:HGroup;
      
      private var _1276435141staticPreviewBarMask:HGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _dataIsDirty:Boolean = false;
      
      private var _progressIsDirty:Boolean = false;
      
      private var _data:DepartmentThresholdBarVo;
      
      private var _currentThreshold:int;
      
      private var _bubbleTip:ToolTip;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function SecurityBarPartComponent()
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
         bindings = this._SecurityBarPartComponent_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_departmentBook_ui_components_SecurityBarPartComponentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return SecurityBarPartComponent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._SecurityBarPartComponent_HGroup1_i(),this._SecurityBarPartComponent_HGroup2_i(),this._SecurityBarPartComponent_Group2_i(),this._SecurityBarPartComponent_HGroup4_i(),this._SecurityBarPartComponent_Group3_i(),this._SecurityBarPartComponent_Group4_i()];
         this.addEventListener("creationComplete",this.___SecurityBarPartComponent_Group1_creationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         SecurityBarPartComponent._watcherSetupUtil = param1;
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
      
      public function set data(param1:DepartmentThresholdBarVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._dataIsDirty = true;
            invalidateProperties();
         }
         else
         {
            this.updatePercent(param1.percent);
         }
      }
      
      public function updatePercent(param1:Number) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data.percent))
         {
            this._data.currentValue = param1;
            this._progressIsDirty = true;
            invalidateProperties();
         }
      }
      
      public function get currentThreshold() : int
      {
         return this._currentThreshold;
      }
      
      private function handleCreationComplete(param1:Event = null) : void
      {
         this.maskGroup.mask = this.staticBarMask;
         this.maskPreviewGroup.mask = this.staticPreviewBarMask;
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:int = 0;
         var _loc3_:BriskImageDynaLib = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         super.commitProperties();
         var _loc2_:* = false;
         if(this.staticBG.width == 0)
         {
            return;
         }
         if(this._progressIsDirty || this._dataIsDirty)
         {
            this._progressIsDirty = false;
            _loc4_ = Math.floor(this.staticPreviewBarMask.width * -1);
            _loc5_ = Math.floor(4 + this.staticBarMask.width * -1 * (1 - Math.min(Number(this._data.percent),1)));
            TweenMax.fromTo(this.maskGroup,0.8,{"left":_loc4_},{"left":_loc5_});
            this.maskGroup.visible = this._data.percent > 0;
            if(this._data.showPreview)
            {
               _loc6_ = Math.floor(4 + this.staticPreviewBarMask.width * -1 * (1 - Math.min(Number(this._data.previewPercent),1)));
               TweenMax.fromTo(this.maskPreviewGroup,0.8,{"left":_loc4_},{
                  "delay":1,
                  "left":_loc6_
               });
               this.maskPreviewGroup.visible = this._data.previewPercent > 0;
            }
            for each(_loc3_ in this.bubbleGroup)
            {
               if(_loc3_)
               {
                  _loc1_ = Number(_loc3_.id);
                  _loc2_ = this._data.currentValue >= _loc1_;
                  _loc3_.dynaBmpSourceName = _loc2_ ? "bubble_checked" : "bubble_unchecked";
                  _loc3_.toolTip = _loc2_ ? this._data.reachedBubbleTooltip : this._data.openBubbleTooltip;
               }
            }
         }
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            this.bubbleGroup.removeAllElements();
            if(this._data.showBubbles)
            {
               _loc7_ = 0;
               while(_loc7_ < this._data.thresholds.length)
               {
                  _loc1_ = this._data.thresholds[_loc7_].threshold;
                  _loc2_ = this._data.currentValue >= _loc1_;
                  _loc3_ = new BriskImageDynaLib();
                  _loc3_.id = _loc1_.toString();
                  _loc3_.dynaLibName = "gui_popups_emergencyBook";
                  _loc3_.dynaBmpSourceName = _loc2_ ? "bubble_checked" : "bubble_unchecked";
                  _loc3_.addEventListener(MouseEvent.ROLL_OVER,this.handleRollOverBubble);
                  _loc3_.addEventListener(MouseEvent.ROLL_OUT,this.handleRollOutBubble);
                  _loc3_.left = (this.staticBG.width - 8) * (_loc1_ / this._data.maxRange) - 8;
                  _loc3_.top = this.height / 2 - 12;
                  _loc3_.toolTip = _loc2_ ? this._data.reachedBubbleTooltip : this._data.openBubbleTooltip;
                  this.bubbleGroup.addElement(_loc3_);
                  _loc7_++;
               }
            }
         }
      }
      
      private function handleRollOutBubble(param1:Event) : void
      {
         dispatchEvent(new Event("RollOutBarComponent"));
         param1.target.filters = [];
      }
      
      private function handleRollOverBubble(param1:Event) : void
      {
         this._currentThreshold = Number(param1.target.id);
         param1.target.filters = [new GlowFilter(201326591,1,4,4,2,1)];
         dispatchEvent(new Event("RollOverBarComponent"));
      }
      
      private function _SecurityBarPartComponent_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._SecurityBarPartComponent_BriskImageDynaLib1_c(),this._SecurityBarPartComponent_BriskImageDynaLib2_c(),this._SecurityBarPartComponent_BriskImageDynaLib3_c()];
         _loc1_.id = "staticBG";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.staticBG = _loc1_;
         BindingManager.executeBindings(this,"staticBG",this.staticBG);
         return _loc1_;
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_bg_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_bg_middle";
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_bg_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SecurityBarPartComponent_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalCenter = 0;
         _loc1_.gap = 0;
         _loc1_.left = 4;
         _loc1_.right = 4;
         _loc1_.mxmlContent = [this._SecurityBarPartComponent_BriskImageDynaLib4_c(),this._SecurityBarPartComponent_BriskImageDynaLib5_c(),this._SecurityBarPartComponent_BriskImageDynaLib6_c()];
         _loc1_.id = "staticPreviewBarMask";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.staticPreviewBarMask = _loc1_;
         BindingManager.executeBindings(this,"staticPreviewBarMask",this.staticPreviewBarMask);
         return _loc1_;
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_yellow_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_yellow_middle";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_yellow_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SecurityBarPartComponent_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._SecurityBarPartComponent_HGroup3_c()];
         _loc1_.id = "maskPreviewGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.maskPreviewGroup = _loc1_;
         BindingManager.executeBindings(this,"maskPreviewGroup",this.maskPreviewGroup);
         return _loc1_;
      }
      
      private function _SecurityBarPartComponent_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._SecurityBarPartComponent_BriskImageDynaLib7_c(),this._SecurityBarPartComponent_BriskImageDynaLib8_c(),this._SecurityBarPartComponent_BriskImageDynaLib9_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_yellow_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_yellow_middle";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_yellow_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SecurityBarPartComponent_HGroup4_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalCenter = 0;
         _loc1_.gap = 0;
         _loc1_.left = 4;
         _loc1_.right = 4;
         _loc1_.mxmlContent = [this._SecurityBarPartComponent_BriskImageDynaLib10_c(),this._SecurityBarPartComponent_BriskImageDynaLib11_c(),this._SecurityBarPartComponent_BriskImageDynaLib12_c()];
         _loc1_.id = "staticBarMask";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.staticBarMask = _loc1_;
         BindingManager.executeBindings(this,"staticBarMask",this.staticBarMask);
         return _loc1_;
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib10_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_green_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib11_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_green_middle";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib12_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_green_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SecurityBarPartComponent_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._SecurityBarPartComponent_HGroup5_c()];
         _loc1_.id = "maskGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.maskGroup = _loc1_;
         BindingManager.executeBindings(this,"maskGroup",this.maskGroup);
         return _loc1_;
      }
      
      private function _SecurityBarPartComponent_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._SecurityBarPartComponent_BriskImageDynaLib13_c(),this._SecurityBarPartComponent_BriskImageDynaLib14_c(),this._SecurityBarPartComponent_BriskImageDynaLib15_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib13_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_green_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib14_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_green_middle";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib15_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_green_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SecurityBarPartComponent_Group4_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.includeInLayout = false;
         _loc1_.percentHeight = 100;
         _loc1_.id = "bubbleGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bubbleGroup = _loc1_;
         BindingManager.executeBindings(this,"bubbleGroup",this.bubbleGroup);
         return _loc1_;
      }
      
      public function ___SecurityBarPartComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
      }
      
      private function _SecurityBarPartComponent_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Number
         {
            return staticPreviewBarMask.width;
         },null,"maskPreviewGroup.width");
         result[1] = new Binding(this,function():Object
         {
            return staticPreviewBarMask.width * -1;
         },null,"maskPreviewGroup.left");
         result[2] = new Binding(this,function():Number
         {
            return staticBarMask.width;
         },null,"maskGroup.width");
         result[3] = new Binding(this,function():Object
         {
            return staticBarMask.width * -1;
         },null,"maskGroup.left");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get bubbleGroup() : Group
      {
         return this._756762963bubbleGroup;
      }
      
      public function set bubbleGroup(param1:Group) : void
      {
         var _loc2_:Object = this._756762963bubbleGroup;
         if(_loc2_ !== param1)
         {
            this._756762963bubbleGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bubbleGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get maskGroup() : Group
      {
         return this._74026253maskGroup;
      }
      
      public function set maskGroup(param1:Group) : void
      {
         var _loc2_:Object = this._74026253maskGroup;
         if(_loc2_ !== param1)
         {
            this._74026253maskGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maskGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get maskPreviewGroup() : Group
      {
         return this._169633629maskPreviewGroup;
      }
      
      public function set maskPreviewGroup(param1:Group) : void
      {
         var _loc2_:Object = this._169633629maskPreviewGroup;
         if(_loc2_ !== param1)
         {
            this._169633629maskPreviewGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maskPreviewGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get staticBG() : HGroup
      {
         return this._1318318899staticBG;
      }
      
      public function set staticBG(param1:HGroup) : void
      {
         var _loc2_:Object = this._1318318899staticBG;
         if(_loc2_ !== param1)
         {
            this._1318318899staticBG = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"staticBG",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get staticBarMask() : HGroup
      {
         return this._146540369staticBarMask;
      }
      
      public function set staticBarMask(param1:HGroup) : void
      {
         var _loc2_:Object = this._146540369staticBarMask;
         if(_loc2_ !== param1)
         {
            this._146540369staticBarMask = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"staticBarMask",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get staticPreviewBarMask() : HGroup
      {
         return this._1276435141staticPreviewBarMask;
      }
      
      public function set staticPreviewBarMask(param1:HGroup) : void
      {
         var _loc2_:Object = this._1276435141staticPreviewBarMask;
         if(_loc2_ !== param1)
         {
            this._1276435141staticPreviewBarMask = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"staticPreviewBarMask",_loc2_,param1));
            }
         }
      }
   }
}

