package net.bigpoint.cityrama.view.emergencyBook.ui.components
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
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProgressThresholdVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   use namespace mx_internal;
   
   public class ProgressThresholdIndicator extends Group implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _ProgressThresholdIndicator_BriskImageDynaLib11:BriskImageDynaLib;
      
      public var _ProgressThresholdIndicator_BriskImageDynaLib5:BriskImageDynaLib;
      
      private var _201073350bgGroup:HGroup;
      
      private var _1232143642dividerGroup:Group;
      
      private var _1281190588mockProgressBar:HGroup;
      
      private var _1911456873mockProgressBarMaskGroup:HGroup;
      
      private var _1705522728realProgressBar:HGroup;
      
      private var _1816737365realProgressBarMaskGroup:HGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _isDirty:Boolean;
      
      private var _progressDirty:Boolean;
      
      private var _data:ProgressThresholdVo;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ProgressThresholdIndicator()
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
         bindings = this._ProgressThresholdIndicator_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_emergencyBook_ui_components_ProgressThresholdIndicatorWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return ProgressThresholdIndicator[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.percentWidth = 100;
         this.mxmlContent = [this._ProgressThresholdIndicator_Group2_c()];
         this.currentState = "normal";
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
         ProgressThresholdIndicator._watcherSetupUtil = param1;
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
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._isDirty && Boolean(this._data))
         {
            this.setThresholds();
         }
         if(this._progressDirty && Boolean(this._data))
         {
            this._progressDirty = false;
            if(this.realProgressBarMaskGroup.width > 0)
            {
               this.realProgressBar.left = Math.floor(this.realProgressBarMaskGroup.width * -1 * (1 - Math.min(Number(this._data.progress),1)));
               this.realProgressBar.visible = true;
               if(this._data.progress == 0)
               {
                  this.realProgressBar.visible = false;
               }
            }
            else
            {
               this.realProgressBarMaskGroup.addEventListener(FlexEvent.CREATION_COMPLETE,this.handleRealMaskComplete);
            }
            if(this.mockProgressBarMaskGroup.width > 0)
            {
               this.mockProgressBar.left = Math.floor(this.mockProgressBarMaskGroup.width * -1 * (1 - Math.min(Number(this._data.extraProgress),1)));
               this.mockProgressBar.visible = true;
               if(this._data.extraProgress == 0)
               {
                  this.mockProgressBar.visible = false;
               }
            }
            else
            {
               this.realProgressBarMaskGroup.addEventListener(FlexEvent.CREATION_COMPLETE,this.handleMockMaskComplete);
            }
         }
      }
      
      private function handleRealMaskComplete(param1:FlexEvent) : void
      {
         this.realProgressBarMaskGroup.removeEventListener(FlexEvent.CREATION_COMPLETE,this.handleRealMaskComplete);
         this._progressDirty = true;
         this.commitProperties();
      }
      
      private function handleMockMaskComplete(param1:FlexEvent) : void
      {
         this.mockProgressBarMaskGroup.removeEventListener(FlexEvent.CREATION_COMPLETE,this.handleMockMaskComplete);
         this._progressDirty = true;
         this.commitProperties();
      }
      
      private function setThresholds() : void
      {
         var _loc1_:BriskImageDynaLib = null;
         var _loc2_:Number = NaN;
         if(this.dividerGroup.width != 0)
         {
            this.dividerGroup.removeAllElements();
            if(this._data.thresholds)
            {
               for each(_loc2_ in this._data.thresholds)
               {
                  if(_loc2_ != 0 && _loc2_ != this._data.maxValue)
                  {
                     _loc1_ = new BriskImageDynaLib();
                     _loc1_.dynaBmpSourceName = "mini_infrabar_divider";
                     _loc1_.dynaLibName = "gui_popups_emergencyBook";
                     _loc1_.left = this.dividerGroup.width / 100 * Math.round(_loc2_ / (this._data.maxValue / 100));
                     this.dividerGroup.addElement(_loc1_);
                  }
               }
            }
            this._isDirty = false;
         }
         else
         {
            this.dividerGroup.addEventListener(FlexEvent.CREATION_COMPLETE,this.onDividerCreationComp);
         }
      }
      
      public function set data(param1:ProgressThresholdVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._isDirty = true;
            this._progressDirty = true;
            invalidateProperties();
         }
      }
      
      public function updateProgress(param1:Number) : void
      {
         if(this._data)
         {
            if(!RandomUtilities.isEqual(param1,this._data.progress))
            {
               this._progressDirty = true;
               this._data.progress = param1;
               invalidateProperties();
            }
         }
      }
      
      public function updateXtraProgress(param1:Number) : void
      {
         if(this._data)
         {
            if(!RandomUtilities.isEqual(param1,this._data.extraProgress))
            {
               this._progressDirty = true;
               this._data.extraProgress = param1;
               invalidateProperties();
            }
         }
      }
      
      private function onDividerCreationComp(param1:FlexEvent) : void
      {
         this.dividerGroup.removeEventListener(FlexEvent.CREATION_COMPLETE,this.onDividerCreationComp);
         if(this._data)
         {
            this.setThresholds();
         }
      }
      
      private function _ProgressThresholdIndicator_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ProgressThresholdIndicator_HGroup1_i(),this._ProgressThresholdIndicator_HGroup2_i(),this._ProgressThresholdIndicator_HGroup3_i(),this._ProgressThresholdIndicator_HGroup4_i(),this._ProgressThresholdIndicator_HGroup5_i(),this._ProgressThresholdIndicator_Group3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.gap = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._ProgressThresholdIndicator_BriskImageDynaLib1_c(),this._ProgressThresholdIndicator_BriskImageDynaLib2_c(),this._ProgressThresholdIndicator_BriskImageDynaLib3_c()];
         _loc1_.id = "bgGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bgGroup = _loc1_;
         BindingManager.executeBindings(this,"bgGroup",this.bgGroup);
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "mini_infrabar_bg_left";
         _loc1_.width = 7;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "mini_infrabar_bg_middle";
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "mini_infrabar_bg_right";
         _loc1_.width = 7;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.left = 3;
         _loc1_.right = 3;
         _loc1_.visible = false;
         _loc1_.mxmlContent = [this._ProgressThresholdIndicator_BriskImageDynaLib4_c(),this._ProgressThresholdIndicator_BriskImageDynaLib5_i(),this._ProgressThresholdIndicator_BriskImageDynaLib6_c()];
         _loc1_.id = "mockProgressBarMaskGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mockProgressBarMaskGroup = _loc1_;
         BindingManager.executeBindings(this,"mockProgressBarMaskGroup",this.mockProgressBarMaskGroup);
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "mini_infrabar_yellow_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "mini_infrabar_yellow_middle";
         _loc1_.id = "_ProgressThresholdIndicator_BriskImageDynaLib5";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ProgressThresholdIndicator_BriskImageDynaLib5 = _loc1_;
         BindingManager.executeBindings(this,"_ProgressThresholdIndicator_BriskImageDynaLib5",this._ProgressThresholdIndicator_BriskImageDynaLib5);
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "mini_infrabar_yellow_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_HGroup3_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._ProgressThresholdIndicator_BriskImageDynaLib7_c(),this._ProgressThresholdIndicator_BriskImageDynaLib8_c(),this._ProgressThresholdIndicator_BriskImageDynaLib9_c()];
         _loc1_.id = "mockProgressBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mockProgressBar = _loc1_;
         BindingManager.executeBindings(this,"mockProgressBar",this.mockProgressBar);
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "mini_infrabar_yellow_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "mini_infrabar_yellow_middle";
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "mini_infrabar_yellow_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_HGroup4_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.left = 3;
         _loc1_.right = 3;
         _loc1_.visible = false;
         _loc1_.mxmlContent = [this._ProgressThresholdIndicator_BriskImageDynaLib10_c(),this._ProgressThresholdIndicator_BriskImageDynaLib11_i(),this._ProgressThresholdIndicator_BriskImageDynaLib12_c()];
         _loc1_.id = "realProgressBarMaskGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.realProgressBarMaskGroup = _loc1_;
         BindingManager.executeBindings(this,"realProgressBarMaskGroup",this.realProgressBarMaskGroup);
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib10_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "mini_infrabar_orange_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib11_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "mini_infrabar_orange_middle";
         _loc1_.id = "_ProgressThresholdIndicator_BriskImageDynaLib11";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ProgressThresholdIndicator_BriskImageDynaLib11 = _loc1_;
         BindingManager.executeBindings(this,"_ProgressThresholdIndicator_BriskImageDynaLib11",this._ProgressThresholdIndicator_BriskImageDynaLib11);
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib12_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "mini_infrabar_orange_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_HGroup5_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._ProgressThresholdIndicator_BriskImageDynaLib13_c(),this._ProgressThresholdIndicator_BriskImageDynaLib14_c(),this._ProgressThresholdIndicator_BriskImageDynaLib15_c()];
         _loc1_.id = "realProgressBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.realProgressBar = _loc1_;
         BindingManager.executeBindings(this,"realProgressBar",this.realProgressBar);
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib13_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "mini_infrabar_orange_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib14_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "mini_infrabar_orange_middle";
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib15_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "mini_infrabar_orange_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.top = 2;
         _loc1_.id = "dividerGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.dividerGroup = _loc1_;
         BindingManager.executeBindings(this,"dividerGroup",this.dividerGroup);
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Number
         {
            return bgGroup.width - 7 - 7;
         },null,"_ProgressThresholdIndicator_BriskImageDynaLib5.width");
         result[1] = new Binding(this,function():Number
         {
            return mockProgressBarMaskGroup.width;
         },null,"mockProgressBar.width");
         result[2] = new Binding(this,function():Object
         {
            return mockProgressBarMaskGroup.width * -1;
         },null,"mockProgressBar.left");
         result[3] = new Binding(this,null,null,"mockProgressBar.mask","mockProgressBarMaskGroup");
         result[4] = new Binding(this,function():Number
         {
            return bgGroup.width - 7 - 7;
         },null,"_ProgressThresholdIndicator_BriskImageDynaLib11.width");
         result[5] = new Binding(this,function():Number
         {
            return realProgressBarMaskGroup.width;
         },null,"realProgressBar.width");
         result[6] = new Binding(this,function():Object
         {
            return realProgressBarMaskGroup.width * -1;
         },null,"realProgressBar.left");
         result[7] = new Binding(this,null,null,"realProgressBar.mask","realProgressBarMaskGroup");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get bgGroup() : HGroup
      {
         return this._201073350bgGroup;
      }
      
      public function set bgGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._201073350bgGroup;
         if(_loc2_ !== param1)
         {
            this._201073350bgGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bgGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dividerGroup() : Group
      {
         return this._1232143642dividerGroup;
      }
      
      public function set dividerGroup(param1:Group) : void
      {
         var _loc2_:Object = this._1232143642dividerGroup;
         if(_loc2_ !== param1)
         {
            this._1232143642dividerGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dividerGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mockProgressBar() : HGroup
      {
         return this._1281190588mockProgressBar;
      }
      
      public function set mockProgressBar(param1:HGroup) : void
      {
         var _loc2_:Object = this._1281190588mockProgressBar;
         if(_loc2_ !== param1)
         {
            this._1281190588mockProgressBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mockProgressBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mockProgressBarMaskGroup() : HGroup
      {
         return this._1911456873mockProgressBarMaskGroup;
      }
      
      public function set mockProgressBarMaskGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._1911456873mockProgressBarMaskGroup;
         if(_loc2_ !== param1)
         {
            this._1911456873mockProgressBarMaskGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mockProgressBarMaskGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get realProgressBar() : HGroup
      {
         return this._1705522728realProgressBar;
      }
      
      public function set realProgressBar(param1:HGroup) : void
      {
         var _loc2_:Object = this._1705522728realProgressBar;
         if(_loc2_ !== param1)
         {
            this._1705522728realProgressBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"realProgressBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get realProgressBarMaskGroup() : HGroup
      {
         return this._1816737365realProgressBarMaskGroup;
      }
      
      public function set realProgressBarMaskGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._1816737365realProgressBarMaskGroup;
         if(_loc2_ !== param1)
         {
            this._1816737365realProgressBarMaskGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"realProgressBarMaskGroup",_loc2_,param1));
            }
         }
      }
   }
}

