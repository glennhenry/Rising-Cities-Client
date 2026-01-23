package net.bigpoint.cityrama.view.assistants.ui.components
{
   import com.greensock.TweenMax;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.detailViews.vo.ProgressBarMiniVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class ProgressBarMini extends Group
   {
      
      private var _97299bar:HGroup;
      
      private var _334036562barTint:HGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public var revertProgress:Boolean;
      
      private var _data:ProgressBarMiniVo;
      
      private var _progress:Number;
      
      private var _intervalID:uint;
      
      private var _isDirty:Boolean;
      
      public function ProgressBarMini()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.height = 10;
         this.mxmlContent = [this._ProgressBarMini_HGroup1_c(),this._ProgressBarMini_HGroup2_i(),this._ProgressBarMini_HGroup3_i()];
         this.addEventListener("creationComplete",this.___ProgressBarMini_Group1_creationComplete);
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
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         var _loc2_:uint = 0;
         if(getStyle("tint") == null)
         {
            _loc2_ = 53236;
         }
         else
         {
            _loc2_ = getStyle("tint") as uint;
         }
         TweenMax.to(this.barTint,0,{"tint":_loc2_});
      }
      
      public function set data(param1:ProgressBarMiniVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._isDirty = true;
            this._data = param1;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._isDirty)
         {
            this._isDirty = false;
            clearInterval(this._intervalID);
            this._intervalID = setInterval(this.handleInterval,1000);
            this.handleInterval();
         }
      }
      
      private function handleInterval() : void
      {
         if(this._data.endTime != 0)
         {
            this._data.currentTime += 1000;
            this._progress = (this._data.currentTime - this._data.startTime) / (this._data.endTime - this._data.startTime);
            if(this._progress != 0 && this.revertProgress)
            {
               this._progress = 1 - this._progress;
            }
            this.bar.percentWidth = 100 * this._progress;
            this.barTint.percentWidth = 100 * this._progress;
         }
         else
         {
            this._progress = 0;
            clearInterval(this._intervalID);
         }
         if(this._progress == 0)
         {
            this.bar.visible = false;
            this.barTint.visible = false;
         }
         else
         {
            this.bar.visible = true;
            this.barTint.visible = true;
         }
      }
      
      private function _ProgressBarMini_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ProgressBarMini_BriskImageDynaLib1_c(),this._ProgressBarMini_BriskImageDynaLib2_c(),this._ProgressBarMini_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProgressBarMini_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_buffs_buffAssets";
         _loc1_.dynaBmpSourceName = "ui_assistent_barbase_left";
         _loc1_.width = 5;
         _loc1_.height = 10;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProgressBarMini_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_buffs_buffAssets";
         _loc1_.dynaBmpSourceName = "ui_assistent_barbase_middle";
         _loc1_.percentWidth = 100;
         _loc1_.height = 10;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProgressBarMini_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_buffs_buffAssets";
         _loc1_.dynaBmpSourceName = "ui_assistent_barbase_right";
         _loc1_.width = 5;
         _loc1_.height = 10;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProgressBarMini_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.paddingLeft = 2;
         _loc1_.paddingRight = 2;
         _loc1_.mxmlContent = [this._ProgressBarMini_BriskImageDynaLib4_c(),this._ProgressBarMini_BriskImageDynaLib5_c(),this._ProgressBarMini_BriskImageDynaLib6_c()];
         _loc1_.id = "bar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bar = _loc1_;
         BindingManager.executeBindings(this,"bar",this.bar);
         return _loc1_;
      }
      
      private function _ProgressBarMini_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_buffs_buffAssets";
         _loc1_.dynaBmpSourceName = "ui_assistent_bar_left";
         _loc1_.height = 4;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProgressBarMini_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_buffs_buffAssets";
         _loc1_.dynaBmpSourceName = "ui_assistent_bar_middle";
         _loc1_.percentWidth = 100;
         _loc1_.height = 4;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProgressBarMini_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_buffs_buffAssets";
         _loc1_.dynaBmpSourceName = "ui_assistent_bar_right";
         _loc1_.height = 4;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProgressBarMini_HGroup3_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.paddingLeft = 2;
         _loc1_.paddingRight = 2;
         _loc1_.blendMode = "overlay";
         _loc1_.mxmlContent = [this._ProgressBarMini_BriskImageDynaLib7_c(),this._ProgressBarMini_BriskImageDynaLib8_c(),this._ProgressBarMini_BriskImageDynaLib9_c()];
         _loc1_.id = "barTint";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.barTint = _loc1_;
         BindingManager.executeBindings(this,"barTint",this.barTint);
         return _loc1_;
      }
      
      private function _ProgressBarMini_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_buffs_buffAssets";
         _loc1_.dynaBmpSourceName = "ui_assistent_bar_left";
         _loc1_.height = 4;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProgressBarMini_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_buffs_buffAssets";
         _loc1_.dynaBmpSourceName = "ui_assistent_bar_middle";
         _loc1_.percentWidth = 100;
         _loc1_.height = 4;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProgressBarMini_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_buffs_buffAssets";
         _loc1_.dynaBmpSourceName = "ui_assistent_bar_right";
         _loc1_.height = 4;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___ProgressBarMini_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get bar() : HGroup
      {
         return this._97299bar;
      }
      
      public function set bar(param1:HGroup) : void
      {
         var _loc2_:Object = this._97299bar;
         if(_loc2_ !== param1)
         {
            this._97299bar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get barTint() : HGroup
      {
         return this._334036562barTint;
      }
      
      public function set barTint(param1:HGroup) : void
      {
         var _loc2_:Object = this._334036562barTint;
         if(_loc2_ !== param1)
         {
            this._334036562barTint = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"barTint",_loc2_,param1));
            }
         }
      }
   }
}

